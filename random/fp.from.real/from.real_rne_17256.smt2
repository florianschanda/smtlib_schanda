(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b00100011011000000110100)))
;; x should be Float32(0x4991B034 [Rational(2386957, 2), 1193478.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 30574941543.0 32768.0))))
;; w should be Float32(0x4963CD13 [Rational(14929171, 16), 933073.187500])

(assert (not (distinct x w)))
(check-sat)
(exit)
