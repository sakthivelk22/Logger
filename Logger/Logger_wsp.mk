.PHONY: clean All

All:
	@echo "----------Building project:[ PropLoader - Debug ]----------"
	@cd "C:\Users\King0Beasts\Documents\GitHub\PropLoader\PropLoader" && $(MAKE) -f  "PropLoader.mk"
clean:
	@echo "----------Cleaning project:[ PropLoader - Debug ]----------"
	@cd "C:\Users\King0Beasts\Documents\GitHub\PropLoader\PropLoader" && $(MAKE) -f  "PropLoader.mk" clean
