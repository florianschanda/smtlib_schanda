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
(assert (= x (fp #b1 #b11100111 #b10000001010110010111101)))
;; x should be Float32(0xF3C0ACBD [Rational(-30530534222815862669390240546816), -30530534222815862669390240546816.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0101110111000110101101110000011000111001011001101011001010111110))
;; z should be 6757289528276726462

(assert (= y z))
(check-sat)
(exit)
