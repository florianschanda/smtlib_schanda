(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11010011 #b11011100000011110110110)))
;; x should be Float32(0xE9EE07B6 [Rational(-35970094867635405779369984), -35970094867635405779369984.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0000110101001000010110011011010110001100000101110001000111100111))
;; z should be 957113557090505191

(assert (= y z))
(check-sat)
(exit)
