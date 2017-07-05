(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.023375774515864033986645154072903096675872802734375p937 {+ 105275129399142 937 (1.18889e+282)}
; Y = 1.1759744248083638940016726337489672005176544189453125p83 {+ 792518353993685 83 (1.13733e+025)}
; 1.023375774515864033986645154072903096675872802734375p937 > 1.1759744248083638940016726337489672005176544189453125p83 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101000 #b0000010111111011111101000110101100010000011101100110)))
(assert (= y (fp #b0 #b10001010010 #b0010110100001100101010001110111101111011111111010101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
