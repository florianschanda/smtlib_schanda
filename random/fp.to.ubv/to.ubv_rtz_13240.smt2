(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ -subnormal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00001001100001011100000)))
;; x should be Float32(0x8004C2E0 [Rational(-9751, 22300745198530623141535718272648361505980416), -0.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTZ x)))
;; y should be 0

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000000))
;; z should be 0

(assert (= y z))
(check-sat)
(exit)
