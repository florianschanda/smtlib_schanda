(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9403653206779380990809613649616949260234832763671875p-548 {- 4235028907797299 -548 (-2.10594e-165)}
; Y = 1.76492190196923814937690622173249721527099609375p336 {+ 3444901992676192 336 (2.47061e+101)}
; -1.9403653206779380990809613649616949260234832763671875p-548 = 1.76492190196923814937690622173249721527099609375p336 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111011011 #b1111000010111011110010000001101010011010101100110011)))
(assert (= y (fp #b0 #b10101001111 #b1100001111010001111010111111100011110011101101100000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
