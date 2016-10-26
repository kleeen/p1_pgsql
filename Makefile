REBAR ?= $(CURDIR)/rebar3

compile:
	$(REBAR) compile

test: eunit ct dialyzer xref

eunit:
	$(REBAR) eunit --cover

ct:
	$(REBAR) ct --cover

dialyzer:
	$(REBAR) dialyzer

xref:
	$(REBAR) xref

all:
	$(REBAR) compile test