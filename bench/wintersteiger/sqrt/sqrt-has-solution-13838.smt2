(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3854365167657440860438100571627728641033172607421875p355 {+ 1735851753281187 355 (1.0168e+107)}
; 1.3854365167657440860438100571627728641033172607421875p355 S == 1.664593954552126664481193074607290327548980712890625p177
; [HW: 1.664593954552126664481193074607290327548980712890625p177] 

; mpf : + 2993065086073642 177
; mpfd: + 2993065086073642 177 (3.18873e+053) class: Pos. norm. non-zero
; hwf : + 2993065086073642 177 (3.18873e+053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101100010 #b0110001010101011111101111011001000110001011010100011)))
(assert (= r (fp #b0 #b10010110000 #b1010101000100010110101000101001111101011101100101010)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
