(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3181625042326154950700356494053266942501068115234375 29 {+ 1432876535505271 29 (7.07683e+008)}
; 1.3181625042326154950700356494053266942501068115234375 29 I == 1.3181625045835971832275390625 29
; [HW: 1.3181625045835971832275390625 29] 

; mpf : + 1432876537085952 29
; mpfd: + 1432876537085952 29 (7.07683e+008) class: Pos. norm. non-zero
; hwf : + 1432876537085952 29 (7.07683e+008) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000011100 #b0101000101110011000110010000111001111110000101110111)))
(assert (= r (fp #b0 #b10000011100 #b0101000101110011000110010001000000000000000000000000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
