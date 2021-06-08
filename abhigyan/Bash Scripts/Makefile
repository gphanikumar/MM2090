default:
	@echo "Usage: "
	@echo "Run using following format: "
	@echo "make <package-name>"

myscript:
	./myscript

sirscripts: RollList.csv
	@./script00.sh
	@./script01.sh
	@./script02.sh
	@./script03.sh
	@./script04.sh

fibonacci: fibonacci.awk
	@echo "Enter nuber of terms:"
	@read x;\
	echo $$x|awk -f fibonacci.awk;

heros: SuperHeroes.csv
	awk -f Hero-parser.awk SuperHeroes.csv


