(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.218413238714289636988041820586659014225006103515625p74 {+ 983645780486458 74 (2.30152e+022)}
; Y = 1.045474731476844443278650942374952137470245361328125p-860 {+ 204799983733890 -860 (1.35993e-259)}
; 1.218413238714289636988041820586659014225006103515625p74 = 1.045474731476844443278650942374952137470245361328125p-860 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001001001 #b0011011111101001111011100001010101001010100100111010)))
(assert (= y (fp #b0 #b00010100011 #b0000101110100100001110110110010001111100110010000010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
