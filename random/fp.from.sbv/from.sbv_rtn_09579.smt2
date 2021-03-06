(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b11001011101001001011001010001010011011110000111011000100100011111101011000101000001101100111011110001111000111101111010010110011))
;; x should be -69593925855034263278218125838932577101

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTN x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #xFE516D36))))
(check-sat)
(exit)
