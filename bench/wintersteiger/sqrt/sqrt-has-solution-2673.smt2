(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.779617716230454060877264055307023227214813232421875p1012 {+ 3511086056306910 1012 (7.81056e+304)}
; 1.779617716230454060877264055307023227214813232421875p1012 S == 1.33402313181985476830959669314324855804443359375p506
; [HW: 1.33402313181985476830959669314324855804443359375p506] 

; mpf : + 1504306451997024 506
; mpfd: + 1504306451997024 506 (2.79474e+152) class: Pos. norm. non-zero
; hwf : + 1504306451997024 506 (2.79474e+152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111110011 #b1100011110010101000001101101001010010111100011011110)))
(assert (= r (fp #b0 #b10111111001 #b0101010110000010100010100011101101000110000101100000)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
