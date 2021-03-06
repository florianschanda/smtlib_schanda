(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsle x #b10010001011101100101101100000100101000011000000110011000010100011001100100101111011110011000100101110111010000000001100010011101))
;; x should be -146929770436648212556193371322427893603

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNA x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #xFEDD134A))))
(check-sat)
(exit)
