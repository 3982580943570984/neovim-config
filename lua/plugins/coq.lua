local coq = require("coq")

require("coq_3p")({
	{ src = "nvimlua", short_name = "nLUA", conf_only = true },
	{ src = "bc", short_name = "MATH", precision = 6 },
	{ src = "cow", trigger = "!cow" },
})
