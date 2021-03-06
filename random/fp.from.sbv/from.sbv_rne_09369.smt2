(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b11100111010110001001111100110011011100001001010111000000111100001111110001001100110101011000010011001011011011111111110010111000))
;; x should be -32770548792465200961329211277847823176

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNE x)))
(assert (not (fp.geq r (fp #b1 #b11111011 #b10001010011101100000110))))
(check-sat)
(exit)
