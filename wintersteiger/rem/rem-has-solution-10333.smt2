(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.458031867269292458644258658750914037227630615234375p-175 {- 2062792146757798 -175 (-3.04451e-053)}
; Y = -1.00049312479364349570687409141100943088531494140625p-11 {- 2220836636900 -11 (-0.000488522)}
; -1.458031867269292458644258658750914037227630615234375p-175 % -1.00049312479364349570687409141100943088531494140625p-11 == -1.458031867269292458644258658750914037227630615234375p-175
; [HW: -1.458031867269292458644258658750914037227630615234375p-175] 

; mpf : - 2062792146757798 -175
; mpfd: - 2062792146757798 -175 (-3.04451e-053) class: Neg. norm. non-zero
; hwf : - 2062792146757798 -175 (-3.04451e-053) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101010000 #b0111010101000001100100111001001001110010100010100110)))
(assert (= y (fp #b1 #b01111110100 #b0000000000100000010100010100001011011100100011100100)))
(assert (= r (fp #b1 #b01101010000 #x75419392728a6)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
