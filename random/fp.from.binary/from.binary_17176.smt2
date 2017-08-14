(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA846066B)))
;; x should be Float32(0xA846066B [Rational(-12977771, 1180591620717411303424), -0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b10101000010001100000011001101011

(assert (not (= y #b10101000010001100000011001101011)))
(check-sat)
(exit)
