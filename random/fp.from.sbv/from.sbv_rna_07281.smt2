(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvsge x #b10101010011111001110010011101101))
;; x should be -1434655507

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNA x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #xCEAB0636))))
(check-sat)
(exit)
