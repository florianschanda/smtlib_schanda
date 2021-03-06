(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x805836EC)))
;; x should be Float32(0x805836EC [Rational(-1445307, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80379367)))
;; y should be Float32(0x80379367 [Rational(-3642215, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b01001010 #b11001000111110001000101)))
;; z should be Float32(0xA5647C45 [Rational(-14974021, 75557863725914323419136), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b1 #b01001010 #b11001000111110001000101))))
(check-sat)
(exit)
