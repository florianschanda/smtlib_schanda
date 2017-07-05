(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5935564563959643269441812662989832460880279541015625p-407 {- 2673140635848217 -407 (-4.82125e-123)}
; Y = 1.5885977120033334397675162108498625457286834716796875p77 {+ 2650808436449339 77 (2.40062e+023)}
; -1.5935564563959643269441812662989832460880279541015625p-407 / 1.5885977120033334397675162108498625457286834716796875p77 == -1.003121460112376350792828816338442265987396240234375p-484
; [HW: -1.003121460112376350792828816338442265987396240234375p-484] 

; mpf : - 14057806598950 -484
; mpfd: - 14057806598950 -484 (-2.00833e-146) class: Neg. norm. non-zero
; hwf : - 14057806598950 -484 (-2.00833e-146) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001101000 #b1001011111110011010100001110000010001100111000011001)))
(assert (= y (fp #b0 #b10001001100 #b1001011010101110010101101111001110001110000000111011)))
(assert (= r (fp #b1 #b01000011011 #b0000000011001100100100010110100100011001001100100110)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
