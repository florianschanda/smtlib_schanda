(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.971834370137161673852688181796111166477203369140625p-796 {+ 4376752907215562 -796 (4.73145e-240)}
; 1.971834370137161673852688181796111166477203369140625p-796 S == 1.404220200017490594035507456283085048198699951171875p-398
; [HW: 1.404220200017490594035507456283085048198699951171875p-398] 

; mpf : + 1820445942174398 -398
; mpfd: + 1820445942174398 -398 (2.17519e-120) class: Pos. norm. non-zero
; hwf : + 1820445942174398 -398 (2.17519e-120) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011100011 #b1111100011001010001000110010010011011110001011001010)))
(assert (= r (fp #b0 #b01001110001 #b0110011101111010111110011001101101110101001010111110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
