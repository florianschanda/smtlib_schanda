(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b11100011 #b01011011110000111100000)))
;; x should be Float32(0x71ADE1E0 [Rational(1722047130195140840135164166144), 1722047130195140840135164166144.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1100010110001000100111111000011001010111000001000111111100100010))
;; z should be 14233802021638799138

(assert (not (= y z)))
(check-sat)
(exit)
