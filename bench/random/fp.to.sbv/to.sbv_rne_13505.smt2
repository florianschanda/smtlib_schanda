(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10011110 #b00110011011010010101001)))
;; x should be Float32(0x4F19B4A9 [Rational(2578753792), 2578753792.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 2578753792

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000010011001101101001010100100000000))
;; z should be 2578753792

(assert (not (= y z)))
(check-sat)
(exit)
