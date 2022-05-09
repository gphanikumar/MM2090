import numpy as np
np.random.seed(0)

from scipy import optimize

import matplotlib.pyplot as plt 
#%matplotlib inline

def sigmoid(x, scale=0.5):
    return 1/(1+np.exp(-(x-np.mean(x))/scale))
    
def fit_function(x, a, b, c):
    return 1/(1+np.exp((x*a-b)/c))

x_data = np.linspace(0, 5, num=50)
y_data = sigmoid(x_data) + 0.06*np.random.normal(size=x_data.shape)

# Finding the parameters for the expected fit function
params, _ = optimize.curve_fit(fit_function, x_data, y_data, p0=[10,0,-1])

# Computing the fitted values
y_fit = fit_function(x_data, params[0], params[1], params[2])
# Computing the gradients
y_grad = np.gradient(y_fit, x_data)

# Plotting the Data
plt.scatter(x_data, y_data, c='green', edgecolors='black')
plt.title("Fraction of Evolution as function of Time")
plt.xlabel("Time")
plt.ylabel("Fractional Growth")
plt.savefig("Data.png", dpi=300)

# Plotting the Fitted curve
plt.scatter(x_data, y_data, c='green', edgecolors='black')
plt.plot(x_data, y_fit, label='Fitted with Sigmoid')
plt.title("Fraction of Evolution as function of Time fitted with sigmoid")
plt.xlabel("Time")
plt.xlim([0,5])
plt.ylabel("Fractional Growth")
plt.ylim([0,1])
plt.legend(loc='best')
plt.savefig("Fitted.png", dpi=300)

# Finding the point at which derivative is maximum
index = np.argmax(y_grad, axis=0)
print ("The growth is maximum at time = ", x_data[index])