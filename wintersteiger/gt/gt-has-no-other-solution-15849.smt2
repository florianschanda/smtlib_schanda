(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.654354806652154952217870231834240257740020751953125p-501 {- 2946952063406738 -501 (-2.52697e-151)}
; Y = -1.536900814497510481260178494267165660858154296875p-955 {- 2417986308105904 -955 (-5.04661e-288)}
; -1.654354806652154952217870231834240257740020751953125p-501 > -1.536900814497510481260178494267165660858154296875p-955 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000001010 #b1010011110000011110010111110111010001101001010010010)))
(assert (= y (fp #b1 #b00001000100 #b1000100101110010010101001110111101110110011010110000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
