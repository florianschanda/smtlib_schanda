(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.738451582150343455168695072643458843231201171875p-215 {+ 3325690270203440 -215 (3.30152e-065)}
; Y = -1.7888695817667297216502220180700533092021942138671875p971 {- 3552752754488563 971 (-3.5703e+292)}
; Z = -1.732682316812301781538963041384704411029815673828125p273 {- 3299707808976834 273 (-2.62971e+082)}
; 1.738451582150343455168695072643458843231201171875p-215 x -1.7888695817667297216502220180700533092021942138671875p971 -1.732682316812301781538963041384704411029815673828125p273 == -1.5549315773414971175725440843962132930755615234375p757
; [HW: -1.5549315773414971175725440843962132930755615234375p757] 

; mpf : - 2499189644931288 757
; mpfd: - 2499189644931288 757 (-1.17874e+228) class: Neg. norm. non-zero
; hwf : - 2499189644931288 757 (-1.17874e+228) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100101000 #b1011110100001011001010011011001100000011111000110000)))
(assert (= y (fp #b1 #b11111001010 #b1100100111110011010110110101111001111111010011110011)))
(assert (= z (fp #b1 #b10100010000 #b1011101110010001000100010111110100010000111111000010)))
(assert (= r (fp #b1 #b11011110100 #b1000111000001111111111101111000000110011000011011000)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
