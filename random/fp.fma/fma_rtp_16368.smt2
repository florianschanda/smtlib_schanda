(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x383B444F)))
;; x should be Float32(0x383B444F [Rational(12272719, 274877906944), 0.000045])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00000001)))
;; y should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b01010110010010011001000)))
;; z should be Float32(0x002B24C8 [Rational(353433, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x002B24C9))))
(check-sat)
(exit)
