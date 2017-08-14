(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +subnormal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x003A4BC9)))
;; x should be Float32(0x003A4BC9 [Rational(3820489, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b00000000001110100100101111001001

(assert (not (= y #b00000000001110100100101111001001)))
(check-sat)
(exit)
