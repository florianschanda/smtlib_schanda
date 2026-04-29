(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.043882556980177067629256271175108850002288818359375p675 {+ 197629467263990 675 (1.63643e+203)}
; 1.043882556980177067629256271175108850002288818359375p675 S == 1.444910071236391591043002335936762392520904541015625p337
; [HW: 1.444910071236391591043002335936762392520904541015625p337] 

; mpf : + 2003696831033594 337
; mpfd: + 2003696831033594 337 (4.04529e+101) class: Pos. norm. non-zero
; hwf : + 2003696831033594 337 (4.04529e+101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010100010 #b0000101100111011111000110010001100011000001111110110)))
(assert (= r (fp #b0 #b10101010000 #b0111000111100101101000000101110110011111000011111010)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
