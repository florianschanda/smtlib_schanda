(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A8E5367)))
;; x should be Float32(0x4A8E5367 [Rational(9327463, 2), 4663731.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 46637317.0 10.0))))
;; w should be Float32(0x4A8E5367 [Rational(9327463, 2), 4663731.500000])

(assert (not (= x w)))
(check-sat)
(exit)
