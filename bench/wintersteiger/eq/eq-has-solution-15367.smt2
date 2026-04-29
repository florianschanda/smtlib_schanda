(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6446132845046168569069777731783688068389892578125p-92 {+ 2903080147893064 -92 (3.32127e-028)}
; Y = 1.6803499232011827047017504810355603694915771484375p-76 {+ 3064023660610392 -76 (2.22392e-023)}
; 1.6446132845046168569069777731783688068389892578125p-92 = 1.6803499232011827047017504810355603694915771484375p-76 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110100011 #b1010010100000101011000000100111110000011101101001000)))
(assert (= y (fp #b0 #b01110110011 #b1010111000101011011010011001110111111100001101011000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
