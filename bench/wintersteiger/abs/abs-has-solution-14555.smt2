(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.294099811070860805983784302952699363231658935546875p-487 {+ 1324507799548462 -487 (3.23862e-147)}
; 1.294099811070860805983784302952699363231658935546875p-487 | == 1.294099811070860805983784302952699363231658935546875p-487
; [HW: 1.294099811070860805983784302952699363231658935546875p-487] 

; mpf : + 1324507799548462 -487
; mpfd: + 1324507799548462 -487 (3.23862e-147) class: Pos. norm. non-zero
; hwf : + 1324507799548462 -487 (3.23862e-147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000011000 #b0100101101001010001000000000111001001111001000101110)))
(assert (= r (fp #b0 #b01000011000 #b0100101101001010001000000000111001001111001000101110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
