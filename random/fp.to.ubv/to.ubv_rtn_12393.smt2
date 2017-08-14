(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11000010 #b00111001100011000100101)))
;; x should be Float32(0xE11CC625 [Rational(-180748118355771129856), -180748118355771129856.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0111011101010110010111110111100001011011100110001001011001111110))
;; z should be 8599165509047981694

(assert (not (= y z)))
(check-sat)
(exit)
