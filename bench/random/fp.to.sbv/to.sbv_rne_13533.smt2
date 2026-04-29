(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10100100 #b10001100100100000101110)))
;; x should be Float32(0x5246482E [Rational(212903624704), 212903624704.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 212903624704

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000011000110010010000010111000000000000000))
;; z should be 212903624704

(assert (not (= y z)))
(check-sat)
(exit)
