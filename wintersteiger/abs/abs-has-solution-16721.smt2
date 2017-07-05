(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5036381861592900133217654001782648265361785888671875p-298 {+ 2268184747516531 -298 (2.9526e-090)}
; 1.5036381861592900133217654001782648265361785888671875p-298 | == 1.5036381861592900133217654001782648265361785888671875p-298
; [HW: 1.5036381861592900133217654001782648265361785888671875p-298] 

; mpf : + 2268184747516531 -298
; mpfd: + 2268184747516531 -298 (2.9526e-090) class: Pos. norm. non-zero
; hwf : + 2268184747516531 -298 (2.9526e-090) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011010101 #b1000000011101110011011101010001010010010001001110011)))
(assert (= r (fp #b0 #b01011010101 #b1000000011101110011011101010001010010010001001110011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
