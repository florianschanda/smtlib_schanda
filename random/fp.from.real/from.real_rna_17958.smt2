(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00630938)))
;; x should be Float32(0x00630938 [Rational(811303, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 12616202757.0 7136238463529799405291429847247475681913733120000.0))))
;; w should be Float32(0x00134034 [Rational(315405, 178405961588244985132285746181186892047843328), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
