(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8733603990422122986814201794913969933986663818359375p-246 {- 3933265567686655 -246 (-1.65669e-074)}
; -1.8733603990422122986814201794913969933986663818359375p-246 | == 1.8733603990422122986814201794913969933986663818359375p-246
; [HW: 1.8733603990422122986814201794913969933986663818359375p-246] 

; mpf : + 3933265567686655 -246
; mpfd: + 3933265567686655 -246 (1.65669e-074) class: Pos. norm. non-zero
; hwf : + 3933265567686655 -246 (1.65669e-074) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100001001 #b1101111110010100100011000000111110000001111111111111)))
(assert (= r (fp #b0 #b01100001001 #b1101111110010100100011000000111110000001111111111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
