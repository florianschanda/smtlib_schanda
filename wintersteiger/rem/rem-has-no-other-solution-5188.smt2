(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2382473240696156846496478465269319713115692138671875p-635 {+ 1072970559901939 -635 (8.68481e-192)}
; Y = 1.8236624821143900820885619395994581282138824462890625p47 {+ 3709446047529425 47 (2.56658e+014)}
; 1.2382473240696156846496478465269319713115692138671875p-635 % 1.8236624821143900820885619395994581282138824462890625p47 == 1.2382473240696156846496478465269319713115692138671875p-635
; [HW: 1.2382473240696156846496478465269319713115692138671875p-635] 

; mpf : + 1072970559901939 -635
; mpfd: + 1072970559901939 -635 (8.68481e-192) class: Pos. norm. non-zero
; hwf : + 1072970559901939 -635 (8.68481e-192) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110000100 #b0011110011111101110001101101000100111101000011110011)))
(assert (= y (fp #b0 #b10000101110 #b1101001011011011100010110101111110011111100111010001)))
(assert (= r (fp #b0 #b00110000100 #x3cfdc6d13d0f3)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
