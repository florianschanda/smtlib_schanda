(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5744387579584360192797021227306686341762542724609375p389 {+ 2587042176288783 389 (1.98515e+117)}
; 1.5744387579584360192797021227306686341762542724609375p389 S == 1.774507682687474829918983232346363365650177001953125p194
; [HW: 1.774507682687474829918983232346363365650177001953125p194] 

; mpf : + 3488072511146898 194
; mpfd: + 3488072511146898 194 (4.45551e+058) class: Pos. norm. non-zero
; hwf : + 3488072511146898 194 (4.45551e+058) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110000100 #b1001001100001110011010110001111011111100100000001111)))
(assert (= r (fp #b0 #b10011000001 #b1100011001000110001000101010111110100100101110010010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
