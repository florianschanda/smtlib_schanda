(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9962511175965891307981792124337516725063323974609375p430 {+ 4486716161975439 430 (5.53494e+129)}
; Y = 1.815904545046827411880485669826157391071319580078125p-96 {+ 3674507405042786 -96 (2.29199e-029)}
; 1.9962511175965891307981792124337516725063323974609375p430 < 1.815904545046827411880485669826157391071319580078125p-96 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110101101 #b1111111100001010010100000011000010101110010010001111)))
(assert (= y (fp #b0 #b01110011111 #b1101000011011111000111101100100110100010010001100010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
