(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.001386469375116217150889497133903205394744873046875p-14 {+ 6244102961134 -14 (6.11198e-005)}
; 1.001386469375116217150889497133903205394744873046875p-14 S == 1.0006929945668232573297018461744301021099090576171875p-7
; [HW: 1.0006929945668232573297018461744301021099090576171875p-7] 

; mpf : + 3120970072915 -7
; mpfd: + 3120970072915 -7 (0.00781791) class: Pos. norm. non-zero
; hwf : + 3120970072915 -7 (0.00781791) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111110001 #b0000000001011010110111010001100010011111011111101110)))
(assert (= r (fp #b0 #b01111111000 #b0000000000101101011010101000010100000000001101010011)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
