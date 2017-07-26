(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10100100 #b10100110011111011101010)))
;; x should be Float32(0x52533EEA [Rational(226823405568), 226823405568.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be 226823405568

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000011010011001111101110101000000000000000))
;; z should be 226823405568

(assert (not (= y z)))
(check-sat)
(exit)
