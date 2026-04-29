(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9936947597298562140366584571893326938152313232421875p851 {+ 4475203349639395 851 (2.99354e+256)}
; 1.9936947597298562140366584571893326938152313232421875p851 | == 1.9936947597298562140366584571893326938152313232421875p851
; [HW: 1.9936947597298562140366584571893326938152313232421875p851] 

; mpf : + 4475203349639395 851
; mpfd: + 4475203349639395 851 (2.99354e+256) class: Pos. norm. non-zero
; hwf : + 4475203349639395 851 (2.99354e+256) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101010010 #b1111111001100010110001111001111100111111000011100011)))
(assert (= r (fp #b0 #b11101010010 #b1111111001100010110001111001111100111111000011100011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
