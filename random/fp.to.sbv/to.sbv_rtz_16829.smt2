(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10111010 #b00111000010110001000011)))
;; x should be Float32(0xDD1C2C43 [Rational(-703340202260692992), -703340202260692992.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -703340202260692992

(declare-const z (_ BitVec 64))
(assert (= z #b1111011000111101001110111101000000000000000000000000000000000000))
;; z should be -703340202260692992

(assert (= y z))
(check-sat)
(exit)
