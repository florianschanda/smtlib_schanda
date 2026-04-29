(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11100110101110010110101)))
;; x should be Float32(0xCAF35CB5 [Rational(-15948981, 2), -7974490.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -7974491

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100001100101000110100101))
;; z should be -7974491

(assert (= y z))
(check-sat)
(exit)
