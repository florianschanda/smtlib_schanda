(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA50C290C)))
;; x should be Float32(0xA50C290C [Rational(-2296387, 18889465931478580854784), -0.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be 0

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000000000000))
;; z should be 0

(assert (not (= y z)))
(check-sat)
(exit)
