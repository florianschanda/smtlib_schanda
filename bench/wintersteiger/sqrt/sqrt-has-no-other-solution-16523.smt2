(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0809071133891239302471376504399813711643218994140625p-526 {+ 364373245710881 -526 (4.92052e-159)}
; 1.0809071133891239302471376504399813711643218994140625p-526 S == 1.039666828069994775063378256163559854030609130859375p-263
; [HW: 1.039666828069994775063378256163559854030609130859375p-263] 

; mpf : + 178643512114998 -263
; mpfd: + 178643512114998 -263 (7.01464e-080) class: Pos. norm. non-zero
; hwf : + 178643512114998 -263 (7.01464e-080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111110001 #b0001010010110110010101000001111000000101001000100001)))
(assert (= r (fp #b0 #b01011111000 #b0000101000100111100110101111000101001011111100110110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
