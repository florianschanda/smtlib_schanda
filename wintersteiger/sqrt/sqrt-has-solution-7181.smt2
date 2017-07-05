(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.521452852709215708415513290674425661563873291015625p-205 {+ 2348414873152506 -205 (2.95876e-062)}
; 1.521452852709215708415513290674425661563873291015625p-205 S == 1.7443926465731365293976296015898697078227996826171875p-103
; [HW: 1.7443926465731365293976296015898697078227996826171875p-103] 

; mpf : + 3352446445724115 -103
; mpfd: + 3352446445724115 -103 (1.7201e-031) class: Pos. norm. non-zero
; hwf : + 3352446445724115 -103 (1.7201e-031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100110010 #b1000010101111101111011110010010011001010101111111010)))
(assert (= r (fp #b0 #b01110011000 #b1011111010010000100001000011100001101010000111010011)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
