(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8318742208419045436329497533733956515789031982421875p946 {+ 3746428431002723 946 (1.08961e+285)}
; Y = 1.320543432534045269477473993902094662189483642578125p814 {+ 1443599283316386 814 (1.44268e+245)}
; 1.8318742208419045436329497533733956515789031982421875p946 - 1.320543432534045269477473993902094662189483642578125p814 == 1.831874220841904321588344828342087566852569580078125p946
; [HW: 1.831874220841904321588344828342087566852569580078125p946] 

; mpf : + 3746428431002722 946
; mpfd: + 3746428431002722 946 (1.08961e+285) class: Pos. norm. non-zero
; hwf : + 3746428431002722 946 (1.08961e+285) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110110001 #b1101010011110101101101010111110011100110110001100011)))
(assert (= y (fp #b0 #b11100101101 #b0101001000001111001000100110011110101110011010100010)))
(assert (= r (fp #b0 #b11110110001 #b1101010011110101101101010111110011100110110001100010)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
