(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvsle x #b10110011111110010011010101010111))
;; x should be -1275513513

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNA x)))
(assert (not (fp.leq r (fp #b1 #b10011101 #b00110000000110110010101))))
(check-sat)
(exit)
