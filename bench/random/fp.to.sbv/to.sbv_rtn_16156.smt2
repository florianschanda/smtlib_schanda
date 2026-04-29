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
(assert (= x ((_ to_fp 8 24) #xFC4A5F10)))
;; x should be Float32(0xFC4A5F10 [Rational(-4203088247947929271531346976311345152), -4203088247947929271531346976311345152.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0101001110001101000100100000110101101000110011000010011101101100))
;; z should be 6020488125666305900

(assert (= y z))
(check-sat)
(exit)
