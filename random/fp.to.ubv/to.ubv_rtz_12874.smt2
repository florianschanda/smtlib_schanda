(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTZ +subnormal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x002AF89C)))
;; x should be Float32(0x002AF89C [Rational(704039, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTZ x)))
;; y should be 0

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000000))
;; z should be 0

(assert (not (= y z)))
(check-sat)
(exit)
