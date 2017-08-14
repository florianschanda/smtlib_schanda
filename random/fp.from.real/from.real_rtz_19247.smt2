(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00011100101001101100111)))
;; x should be Float32(0x4A8E5367 [Rational(9327463, 2), 4663731.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ 4663734.0)))
;; w should be Float32(0x4A8E536C [Rational(4663734), 4663734.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
