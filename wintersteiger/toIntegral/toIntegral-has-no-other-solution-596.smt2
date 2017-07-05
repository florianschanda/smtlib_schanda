(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3022100595661612043585364517639391124248504638671875 552 {+ 1361033111649779 552 (1.91972e+166)}
; 1.3022100595661612043585364517639391124248504638671875 552 I == 1.3022100595661612043585364517639391124248504638671875 552
; [HW: 1.3022100595661612043585364517639391124248504638671875 552] 

; mpf : + 1361033111649779 552
; mpfd: + 1361033111649779 552 (1.91972e+166) class: Pos. norm. non-zero
; hwf : + 1361033111649779 552 (1.91972e+166) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100111 #b0100110101011101101000110111001001011011110111110011)))
(assert (= r (fp #b0 #b11000100111 #b0100110101011101101000110111001001011011110111110011)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
