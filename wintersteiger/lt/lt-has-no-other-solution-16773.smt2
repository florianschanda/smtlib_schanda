(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.338761092298895949426196239073760807514190673828125p329 {+ 1525644329044930 329 (1.4641e+099)}
; Y = -1.9554005410568542355775889518554322421550750732421875p277 {- 4302741520693219 277 (-4.74837e+083)}
; 1.338761092298895949426196239073760807514190673828125p329 < -1.9554005410568542355775889518554322421550750732421875p277 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101001000 #b0101011010111001000011000000010010010100101111000010)))
(assert (= y (fp #b1 #b10100010100 #b1111010010010101001000010011111001101011011111100011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
