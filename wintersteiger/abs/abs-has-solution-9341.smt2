(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9651805105953175090149898096569813787937164306640625p-691 {+ 4346786587862337 -691 (1.91283e-208)}
; 1.9651805105953175090149898096569813787937164306640625p-691 | == 1.9651805105953175090149898096569813787937164306640625p-691
; [HW: 1.9651805105953175090149898096569813787937164306640625p-691] 

; mpf : + 4346786587862337 -691
; mpfd: + 4346786587862337 -691 (1.91283e-208) class: Pos. norm. non-zero
; hwf : + 4346786587862337 -691 (1.91283e-208) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101001100 #b1111011100010110000100011110011110111110010101000001)))
(assert (= r (fp #b0 #b00101001100 #b1111011100010110000100011110011110111110010101000001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
