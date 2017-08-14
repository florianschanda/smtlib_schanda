(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11000101 #b01001110101111001000110)))
;; x should be Float32(0xE2A75E46 [Rational(-1543699688698715045888), -1543699688698715045888.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0110101101001011110010100010101000011011010000011110110011110001))
;; z should be 7731495467506330865

(assert (not (= y z)))
(check-sat)
(exit)
