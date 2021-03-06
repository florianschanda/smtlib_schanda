(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b1010011001101000101011100001111110010100000111111011101000001010))
;; x should be -6455718615183279606

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTZ x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #xDEB32EA3))))
(check-sat)
(exit)
