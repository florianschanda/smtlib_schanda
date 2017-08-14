(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10100001000000011011100)))
;; x should be Float32(0x005080DC [Rational(1318967, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 1055173851.0 142724769270595988105828596944949513638274662400.0))))
;; w should be Float32(0x005080DD [Rational(5275869, 713623846352979940529142984724747568191373312), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
