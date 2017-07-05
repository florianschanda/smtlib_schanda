(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.24288448760388003933030631742440164089202880859375p-40 {+ 1093854487866908 -40 (1.1304e-012)}
; Y = 0.141041565135601398850440091337077319622039794921875p-1022 {+ 635194740188446 -1023 (3.13828e-309)}
; 1.24288448760388003933030631742440164089202880859375p-40 < 0.141041565135601398850440091337077319622039794921875p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010111 #b0011111000101101101011011000001011110110111000011100)))
(assert (= y (fp #b0 #b00000000000 #b0010010000011011010011001100110110100010010100011110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
